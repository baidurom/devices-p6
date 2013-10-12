.class public Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
.super Landroid/os/Binder;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/huawei/android/FMRadio/FMRadioService;

.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService;Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 1
    .parameter
    .parameter "service"

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    .line 1600
    iput-object p2, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    .line 1601
    return-void
.end method


# virtual methods
.method public fmAutoTune()V
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmAutoTune()V

    .line 1625
    return-void
.end method

.method public fmCancelAutoTune()V
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelAutoTune()V

    .line 1629
    return-void
.end method

.method public fmManualTune(Z)V
    .locals 1
    .parameter "mDirection"

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmManualTune(Z)V

    .line 1633
    return-void
.end method

.method public fmOpenFMSound(B)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmOpenFMSound(B)V

    .line 1641
    return-void
.end method

.method public fmPlay(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmPlay(I)Z

    .line 1613
    return-void
.end method

.method public fmStop()V
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 1609
    return-void
.end method

.method public getSearchStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1667
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
