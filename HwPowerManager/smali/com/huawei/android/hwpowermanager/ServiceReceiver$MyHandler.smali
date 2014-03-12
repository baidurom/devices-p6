.class Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;
.super Landroid/os/Handler;
.source "ServiceReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/ServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, mPackageName:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v1, "ServiceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xxxx add or remove pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    .line 122
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V
    invoke-static {v1, v0, v4, v2}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$100(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->deleteFromSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 134
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V
    invoke-static {v1, v0, v4, v2}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$100(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
