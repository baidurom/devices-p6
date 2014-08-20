.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$Led$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 802
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryLowARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 804
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryMediumARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 806
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryFullARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 808
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryLedOn#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 810
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryLedOff#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->createSettingsObserver()V

    .line 812
    return-void
.end method


# virtual methods
.method turnOffLight()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 817
    return-void
.end method

.method public updateLightsLocked()V
    .locals 8

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLockedHook()Z

    move-result v0

    if-eqz v0, :cond_baidu_0

    goto :goto_baidu_0

    :cond_baidu_0

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 824
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 825
    .local v0, level:I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 826
    .local v1, status:I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)I

    move-result v3

    if-ge v0, v3, :cond_3

    if-ne v1, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    :goto_0
    :goto_baidu_0
    return-void

    :cond_0
    const-string v3, "true"

    const-string v4, "ro.config.hw_quickpoweron"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    const-string v3, "persist.sys.quickpoweron"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, strPower:Ljava/lang/String;
    const-string v3, "startshutdown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shutdown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 835
    :cond_1
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "return updateLightsLocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 842
    .end local v2           #strPower:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 845
    :cond_3
    if-eq v1, v4, :cond_4

    if-ne v1, v5, :cond_7

    .line 847
    :cond_4
    if-eq v1, v5, :cond_5

    const/16 v3, 0x5a

    if-lt v0, v3, :cond_6

    .line 849
    :cond_5
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 852
    :cond_6
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 856
    :cond_7
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0
.end method

.method static synthetic access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$iget-mBatteryLedOn-1d5160(Lcom/android/server/BatteryService$Led;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    return v0
.end method

.method static synthetic access$iget-mBatteryLedOff-cc2be1(Lcom/android/server/BatteryService$Led;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return v0
.end method

.method private createSettingsObserver()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/BatteryService$Led$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->observe()V

    return-void
.end method

.method private updateLightsLockedHook()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    #calls: Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z
    invoke-static {v0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->access$invoke-updateLightPulse-fe2949(Lcom/android/server/BatteryService$Led$SettingsObserver;)Z

    const/4 v0, 0x1

    return v0
.end method
