.class Lcom/huawei/android/FMRadio/FMRadioService$12;
.super Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvRadioTuneStatus(I)V
    .locals 4
    .parameter "frequency"

    .prologue
    .line 1503
    :try_start_0
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1504
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2000()I

    move-result v2

    if-gez v2, :cond_0

    .line 1505
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2002(I)I

    .line 1506
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1512
    :cond_0
    div-int/lit8 v1, p1, 0xa

    .line 1514
    .local v1, tmpfreq:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1515
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2008()I

    .line 1552
    .end local v1           #tmpfreq:I
    :cond_1
    :goto_0
    return-void

    .line 1518
    :cond_2
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1520
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1524
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$000()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1525
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->startFM()V
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$200(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 1526
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v2

    if-nez v2, :cond_3

    .line 1528
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const/4 v3, 0x1

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->enableSpeaker(Z)V
    invoke-static {v2, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->access$300(Lcom/huawei/android/FMRadio/FMRadioService;Z)V

    .line 1532
    :cond_3
    div-int/lit8 v1, p1, 0xa

    .line 1533
    .restart local v1       #tmpfreq:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1534
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2102(I)I

    .line 1535
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2100()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 1536
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2100()I

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->saveLastFrequency(Landroid/content/Context;I)V

    .line 1543
    :cond_4
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1544
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 1547
    :cond_5
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v3, "com.huawei.android.FMRadio.playstatechanged"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1549
    .end local v1           #tmpfreq:I
    :catch_0
    move-exception v0

    .line 1550
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchComplete(I)V
    .locals 4
    .parameter "frequency"

    .prologue
    .line 1560
    :try_start_0
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1561
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 1562
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1563
    const-string v1, "FMRadioService"

    const-string v2, "cancelTune autoTune success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$702(Z)Z

    .line 1565
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v2, "com.huawei.android.FMRadio.cancelautotune"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    const-string v1, "FMRadioService"

    const-string v2, "autoTune complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v2, "com.huawei.android.FMRadio.autotunecomplete"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1570
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1572
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    .line 1573
    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1574
    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2102(I)I

    .line 1575
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2100()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 1576
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2100()I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->saveLastFrequency(Landroid/content/Context;I)V

    .line 1581
    :goto_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1582
    const-string v1, "FMRadioService"

    const-string v2, "cancel manual tune success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2202(Z)Z

    goto :goto_0

    .line 1578
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2100()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->fmPlay(I)Z

    goto :goto_1

    .line 1585
    :cond_4
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualTune success, the frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$2100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v2, "com.huawei.android.FMRadio.manualtunecomplete"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
