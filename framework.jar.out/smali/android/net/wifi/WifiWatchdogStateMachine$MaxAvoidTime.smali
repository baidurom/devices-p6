.class Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxAvoidTime"
.end annotation


# instance fields
.field public final MIN_RSSI_DBM:I

.field public final TIME_MS:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "time"
    .parameter "rssi"

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    .line 1034
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    .line 1035
    return-void
.end method
