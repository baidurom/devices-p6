.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x67

    const/4 v4, 0x0

    .line 609
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 613
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #setter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v1, v4}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1002(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Z)Z

    .line 614
    const-string v1, "FMRadioMainActivity"

    const-string v2, "auto tune complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 617
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #setter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v1, v4}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1002(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Z)Z

    .line 618
    const-string v1, "FMRadioMainActivity"

    const-string v2, "cancel auto tune complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_2
    const-string v1, "com.huawei.android.FMRadio.manualtunecomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 620
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 621
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 623
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    const-string v1, "FMRadioMainActivity"

    const-string v2, "manual tune complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_4
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 626
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    #setter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$402(Lcom/huawei/android/FMRadio/FMRadioMainActivity;I)I

    .line 627
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 628
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 629
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 631
    :cond_5
    const-string v1, "FMRadioMainActivity"

    const-string v2, "play fm complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 632
    :cond_6
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 633
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 638
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 640
    :cond_7
    const-string v1, "FMRadioMainActivity"

    const-string v2, "stop fm complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    :cond_8
    const-string v1, "com.huawei.android.FMRadio.operationfail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 642
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 643
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 645
    :cond_9
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 647
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 648
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 649
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 651
    :cond_a
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    const-string v1, "FMRadioMainActivity"

    const-string v2, "operation error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 653
    :cond_b
    const-string v1, "com.huawei.android.FMRadio.headsetunplug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 654
    const-string v1, "FMRadioMainActivity"

    const-string v2, "headset is unplug"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 656
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 659
    :cond_c
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 660
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 661
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 662
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 663
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 665
    :cond_d
    const-string v1, "FMRadioMainActivity"

    const-string v2, "unplug headset during auto search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_e
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 669
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    .line 670
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 671
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 673
    :cond_f
    const-string v1, "FMRadioMainActivity"

    const-string v2, "unplug headset during manual search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_10
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 677
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 682
    :cond_11
    const v1, 0x7f080039

    invoke-static {p1, v1, v4}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 684
    :cond_12
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 685
    const-string v1, "FMRadioMainActivity"

    const-string v2, "receive headset plug event and do play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mOnTop:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 692
    :cond_13
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 693
    const-string v1, "FMRadioMainActivity"

    const-string v2, "receive headset plug event and do search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mOnTop:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-virtual {v1, v4}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->startAutoTune(Z)V

    goto/16 :goto_0

    .line 697
    :cond_14
    const-string v1, "com.huawei.android.FMRadio.opensoundsuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 698
    const-string v1, "FMRadioMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v1

    if-ne v1, v5, :cond_15

    .line 700
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 702
    :cond_15
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 704
    :cond_16
    const-string v1, "com.huawei.android.FMRadio.callingstate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 705
    const-string v1, "FMRadioMainActivity"

    const-string v2, "calling state can not play FM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 707
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 709
    :cond_17
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    goto/16 :goto_0

    .line 712
    :cond_18
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0
.end method
