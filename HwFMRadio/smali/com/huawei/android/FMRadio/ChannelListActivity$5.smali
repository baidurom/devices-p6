.class Lcom/huawei/android/FMRadio/ChannelListActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, action:Ljava/lang/String;
    const-string v1, "ChannelListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$300(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$200(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 390
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #setter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z
    invoke-static {v1, v4}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$302(Lcom/huawei/android/FMRadio/ChannelListActivity;Z)Z

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 393
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 395
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    iget-object v1, v1, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 397
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->refreshStatus()V

    .line 399
    const-string v1, "ChannelListActivity"

    const-string v2, "play complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_4
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 401
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 402
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 404
    :cond_5
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    iget-object v1, v1, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 406
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->refreshStatus()V

    .line 408
    const-string v1, "ChannelListActivity"

    const-string v2, "stop fm complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_6
    const-string v1, "com.huawei.android.FMRadio.headsetunplug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 410
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 411
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 412
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 413
    const-string v1, "ChannelListActivity"

    const-string v2, "during auto search unplug headset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_7
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 417
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 422
    :cond_8
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080039

    invoke-static {v1, v2, v4}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 424
    :cond_9
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 425
    const-string v1, "ChannelListActivity"

    const-string v2, "receive headset plug event and do play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 432
    :cond_a
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 433
    const-string v1, "ChannelListActivity"

    const-string v2, "receive headset plug event and do search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-virtual {v1, v4}, Lcom/huawei/android/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto/16 :goto_0

    .line 437
    :cond_b
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$200(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0
.end method
