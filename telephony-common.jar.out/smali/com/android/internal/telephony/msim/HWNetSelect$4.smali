.class Lcom/android/internal/telephony/msim/HWNetSelect$4;
.super Landroid/os/Handler;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/HWNetSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/msim/HWNetSelect;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/HWNetSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$4;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    .line 503
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 505
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$4;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$000(Lcom/android/internal/telephony/msim/HWNetSelect;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVENT_SWITCH_MTK_SIM_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v1, "persist.radio.switchto.modem"

    const-string v2, "MODEM_CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 510
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->clearCGIccid()V

    .line 511
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCardsSubsInfo()V

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :goto_1
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    const-string v1, "dualmgrstartcause"

    const-string v2, "framework"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$4;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$100(Lcom/android/internal/telephony/msim/HWNetSelect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 527
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->restartRild(I)V

    goto :goto_0

    .line 517
    :cond_0
    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
