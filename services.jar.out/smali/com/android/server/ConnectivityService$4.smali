.class Lcom/android/server/ConnectivityService$4;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3859
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3862
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3864
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 3866
    .local v5, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isLockScreenDisabled()Z

    move-result v1

    .line 3867
    .local v1, disable:Z
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    .line 3874
    .local v6, locked:Z
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "max_level"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v1, :cond_7

    if-nez v6, :cond_0

    const-string v8, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3876
    :cond_0
    const-string v8, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3877
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3878
    :try_start_0
    const-string v8, "receive keyguard unlock intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3880
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v8, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v8, :cond_1

    .line 3881
    const-string v8, "stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3882
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)V

    .line 3883
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3885
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3900
    :cond_2
    :goto_0
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3901
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3902
    :try_start_1
    const-string v8, "receive screen off intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3904
    const-string v8, "sys.iswifihotspoton"

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3905
    .local v4, isWifiApOn:Z
    const-string v8, "sys.isusbtetheringon"

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3906
    .local v3, isUsbTetheringOn:Z
    const-string v8, "sys.isbthotspoton"

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3907
    .local v2, isBtTetheringOn:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi tethering: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Usb tethering: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3909
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bt tethering: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3911
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3912
    if-nez v4, :cond_5

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    .line 3913
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v8, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "max_level"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v1, :cond_5

    .line 3915
    :cond_3
    const-string v8, "start powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3916
    if-nez v1, :cond_4

    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "min_level"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3917
    :cond_4
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)V

    .line 3927
    :goto_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3932
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3970
    .end local v2           #isBtTetheringOn:Z
    .end local v3           #isUsbTetheringOn:Z
    .end local v4           #isWifiApOn:Z
    :cond_6
    :goto_2
    return-void

    .line 3885
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 3888
    :cond_7
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3889
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3890
    :try_start_3
    const-string v8, "receive screen on intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3892
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v8, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v8, :cond_8

    .line 3893
    const-string v8, "stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3894
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)V

    .line 3895
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3897
    :cond_8
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 3920
    .restart local v2       #isBtTetheringOn:Z
    .restart local v3       #isUsbTetheringOn:Z
    .restart local v4       #isWifiApOn:Z
    :cond_9
    :try_start_4
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "max_level"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v1, :cond_a

    .line 3922
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v6, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3925
    :cond_a
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSavingI(Z)V
    invoke-static {v8, v6}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Z)V

    goto :goto_1

    .line 3932
    .end local v2           #isBtTetheringOn:Z
    .end local v3           #isUsbTetheringOn:Z
    .end local v4           #isWifiApOn:Z
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 3933
    :cond_b
    const-string v8, "android.telephony.turnoff_DC"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3934
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3935
    :try_start_5
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v8, v8, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v8, :cond_c

    .line 3937
    sget-boolean v8, Lcom/android/server/ConnectivityService;->useCtrlSocket:Z

    if-eqz v8, :cond_d

    .line 3940
    const/16 v8, 0x64

    const/4 v10, 0x1

    invoke-static {v8, v10}, Ldalvik/system/Zygote;->ctrlSockets(II)I

    move-result v7

    .line 3941
    .local v7, retVal:I
    const-string v8, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INTENT_TURNOFF_DC retVal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    if-nez v7, :cond_c

    .line 3944
    const-string v8, "ConnectivityService"

    const-string v10, "turn off Data Connection!"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;)V

    .line 3954
    .end local v7           #retVal:I
    :cond_c
    :goto_3
    monitor-exit v9

    goto/16 :goto_2

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v8

    .line 3950
    :cond_d
    :try_start_6
    const-string v8, "ConnectivityService"

    const-string v10, "turn off Data Connection!"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 3957
    :cond_e
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3958
    const-string v8, "receive Intent.ACTION_BOOT_COMPLETED!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3959
    const-string v8, "ro.config.hw_power_saving"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v12, v8, :cond_6

    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getTurnOffDCState()Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3964
    const-string v8, "exception of power saving when power off,then turnonDC"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3966
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnonDC()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_2
.end method
