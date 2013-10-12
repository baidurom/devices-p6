.class public Lcom/huawei/android/FMRadio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    }
.end annotation


# static fields
.field private static mCancelAutoTune:Z

.field private static mCancelManualTune:Z

.field private static mCurrentFreq:I

.field private static mHeadsetPlugged:Z

.field private static mPhoneState:Z

.field private static mPlayByHeadset:Z

.field private static mReceiver:Landroid/hardware/fmradio/FmReceiver;

.field private static mSearchStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mStationCount:I


# instance fields
.field private final fmCallbacks:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

.field private headsetThreadQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private isSwitching:Z

.field private isTogglePause:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBinder:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

.field private mContext:Landroid/content/Context;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private final mFMConfiguration:Landroid/hardware/fmradio/FmConfig;

.field private final mHandler:Landroid/os/Handler;

.field final mHeadsetPluginHandler:Ljava/lang/Runnable;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMediaButtonReceiver:Z

.field private mMaxFreq:I

.field private mMinFreq:I

.field private mMuted:Z

.field private mPhoneReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field final mScreenOffHandler:Ljava/lang/Runnable;

.field final mScreenOnHandler:Ljava/lang/Runnable;

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field mWidgetToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mHeadsetPlugged:Z

    .line 88
    sput-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelAutoTune:Z

    .line 93
    sput-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelManualTune:Z

    .line 103
    sput-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneState:Z

    .line 109
    sput v0, Lcom/huawei/android/FMRadio/FMRadioService;->mCurrentFreq:I

    .line 115
    sput v0, Lcom/huawei/android/FMRadio/FMRadioService;->mStationCount:I

    .line 125
    sput-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mPlayByHeadset:Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceInUse:Z

    .line 78
    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMuted:Z

    .line 98
    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceStartId:I

    .line 130
    const v0, 0x155cc

    iput v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMinFreq:I

    .line 135
    const v0, 0x1a5e0

    iput v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMaxFreq:I

    .line 150
    iput-object p0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;

    .line 195
    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z

    .line 200
    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isSwitching:Z

    .line 208
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    invoke-direct {v0, p0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mBinder:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    .line 213
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->buildDefaultFMConfig()Landroid/hardware/fmradio/FmConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mFMConfiguration:Landroid/hardware/fmradio/FmConfig;

    .line 228
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$1;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 263
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$2;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 308
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$3;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$4;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$5;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$5;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    .line 579
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$6;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$6;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mWidgetToastHandler:Landroid/os/Handler;

    .line 766
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$8;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$8;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 814
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$10;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$10;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnHandler:Ljava/lang/Runnable;

    .line 830
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$11;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$11;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOffHandler:Ljava/lang/Runnable;

    .line 1495
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioService$12;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioService$12;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->fmCallbacks:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 1595
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneState:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneState:Z

    return p0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->stopFM()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mPlayByHeadset:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPlayByHeadset:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->waitCancelAutotune()V

    return-void
.end method

.method static synthetic access$1502(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->intoApplication()V

    return-void
.end method

.method static synthetic access$1700(Lcom/huawei/android/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/huawei/android/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->startFM()V

    return-void
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/huawei/android/FMRadio/FMRadioService;->mStationCount:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput p0, Lcom/huawei/android/FMRadio/FMRadioService;->mStationCount:I

    return p0
.end method

.method static synthetic access$2008()I
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/huawei/android/FMRadio/FMRadioService;->mStationCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/android/FMRadio/FMRadioService;->mStationCount:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/huawei/android/FMRadio/FMRadioService;->mCurrentFreq:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput p0, Lcom/huawei/android/FMRadio/FMRadioService;->mCurrentFreq:I

    return p0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelManualTune:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelManualTune:Z

    return p0
.end method

.method static synthetic access$300(Lcom/huawei/android/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->enableSpeaker(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->destoryServiceNow()V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->unRegisterMediaButton()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelAutoTune:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelAutoTune:Z

    return p0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static buildDefaultFMConfig()Landroid/hardware/fmradio/FmConfig;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 217
    new-instance v0, Landroid/hardware/fmradio/FmConfig;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmConfig;-><init>()V

    .line 218
    .local v0, config:Landroid/hardware/fmradio/FmConfig;
    invoke-virtual {v0, v2}, Landroid/hardware/fmradio/FmConfig;->setChSpacing(I)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/hardware/fmradio/FmConfig;->setEmphasis(I)V

    .line 220
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmConfig;->setRadioBand(I)V

    .line 221
    invoke-virtual {v0, v2}, Landroid/hardware/fmradio/FmConfig;->setRdsStd(I)V

    .line 222
    return-object v0
.end method

.method private destoryServiceNow()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 761
    return-void
.end method

.method private doStartOrStopFM()V
    .locals 2

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z

    .line 672
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioService$7;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioService$7;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 704
    :cond_0
    return-void
.end method

.method private enableSpeaker(Z)V
    .locals 2
    .parameter "speakerOn"

    .prologue
    const/4 v1, 0x1

    .line 1343
    if-eqz p1, :cond_0

    .line 1344
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1348
    :goto_0
    return-void

    .line 1346
    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0
.end method

.method private fmOff()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1152
    const/4 v0, 0x0

    .line 1154
    .local v0, bStatus:Z
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v1

    if-nez v1, :cond_0

    .line 1156
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->enableSpeaker(Z)V

    .line 1157
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmFMSoundMode(B)V

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->stopFM()V

    .line 1161
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->stop()V

    .line 1164
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_1

    .line 1167
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1168
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v1}, Landroid/hardware/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 1169
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    .line 1172
    :cond_1
    if-eqz v0, :cond_3

    .line 1177
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 1188
    :cond_2
    :goto_0
    return v0

    .line 1184
    :cond_3
    const-string v1, "com.huawei.android.FMRadio.operationfail"

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1185
    const-string v1, "FMRadioService"

    const-string v2, "fmOff fails.\n"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fmOn()Z
    .locals 6

    .prologue
    .line 1103
    const/4 v0, 0x0

    .line 1105
    .local v0, bStatus:Z
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->getmReceiver()Landroid/hardware/fmradio/FmReceiver;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1107
    :try_start_0
    new-instance v3, Landroid/hardware/fmradio/FmReceiver;

    const-string v4, "/dev/radio0"

    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService;->fmCallbacks:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-direct {v3, v4, v5}, Landroid/hardware/fmradio/FmReceiver;-><init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V

    sput-object v3, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_0
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v3, :cond_1

    .line 1115
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    const/4 v0, 0x1

    .line 1118
    const-string v3, "FMRadioService"

    const-string v4, "mReceiver.already enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_0
    if-eqz v0, :cond_3

    .line 1130
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmBroadcastOn(Z)V

    .line 1133
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z

    .line 1134
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 1141
    .end local v0           #bStatus:Z
    .local v1, bStatus:I
    :goto_2
    return v1

    .line 1108
    .end local v1           #bStatus:I
    .restart local v0       #bStatus:Z
    :catch_0
    move-exception v2

    .line 1109
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v3, "FMRadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1110
    .restart local v1       #bStatus:I
    goto :goto_2

    .line 1121
    .end local v1           #bStatus:I
    .end local v2           #e:Ljava/lang/InstantiationException;
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mFMConfiguration:Landroid/hardware/fmradio/FmConfig;

    iget v4, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMinFreq:I

    invoke-virtual {v3, v4}, Landroid/hardware/fmradio/FmConfig;->setLowerLimit(I)V

    .line 1123
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mFMConfiguration:Landroid/hardware/fmradio/FmConfig;

    iget v4, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMaxFreq:I

    invoke-virtual {v3, v4}, Landroid/hardware/fmradio/FmConfig;->setUpperLimit(I)V

    .line 1126
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mFMConfiguration:Landroid/hardware/fmradio/FmConfig;

    invoke-virtual {v3, v4}, Landroid/hardware/fmradio/FmReceiver;->enable(Landroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    goto :goto_0

    .line 1136
    :cond_3
    const-string v3, "FMRadioService"

    const-string v4, "mReceiver.enable fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->stop()V

    goto :goto_1
.end method

.method public static getmReceiver()Landroid/hardware/fmradio/FmReceiver;
    .locals 1

    .prologue
    .line 1489
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    return-object v0
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 747
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 748
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 749
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 751
    return-void
.end method

.method private intoApplication()V
    .locals 3

    .prologue
    .line 708
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->startActivity(Landroid/content/Intent;)V

    .line 713
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 1079
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1083
    return-void
.end method

.method private registerMediaButton()V
    .locals 1

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    if-nez v0, :cond_0

    .line 1356
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->registerMediaButtonEventReceiver(Landroid/content/Context;)V

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 1359
    :cond_0
    return-void
.end method

.method private registerScreenOnOffListener()V
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 789
    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioService$9;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioService$9;-><init>(Lcom/huawei/android/FMRadio/FMRadioService;)V

    iput-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 805
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 809
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private scan(I)Z
    .locals 8
    .parameter "pty"

    .prologue
    const/16 v7, 0x1f

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1231
    const/4 v6, 0x0

    .line 1233
    .local v6, bCommandSent:Z
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 1234
    const-string v0, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scan:  PTY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mFMConfiguration:Landroid/hardware/fmradio/FmConfig;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v0

    if-nez v0, :cond_4

    .line 1237
    if-lez p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    if-gt p1, v7, :cond_3

    .line 1238
    :cond_1
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    move v3, v2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v6

    .line 1260
    :cond_2
    :goto_0
    return v6

    .line 1243
    :cond_3
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v2, v2, v2}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    move-result v6

    goto :goto_0

    .line 1248
    :cond_4
    if-lez p1, :cond_5

    if-gt p1, v7, :cond_5

    .line 1249
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    move v3, v2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v6

    goto :goto_0

    .line 1254
    :cond_5
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v2, v2, v2}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    move-result v6

    goto :goto_0
.end method

.method private setLowPowerMode(Z)Z
    .locals 3
    .parameter "bLowPower"

    .prologue
    .line 1297
    const/4 v0, 0x0

    .line 1299
    .local v0, bCommandSent:Z
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1302
    if-eqz p1, :cond_1

    .line 1303
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    .line 1309
    :cond_0
    :goto_0
    return v0

    .line 1305
    :cond_1
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setmCancelAutoTune(Z)V
    .locals 0
    .parameter "mCancelAutoTune"

    .prologue
    .line 1477
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelAutoTune:Z

    .line 1478
    return-void
.end method

.method public static setmCancelManualTune(Z)V
    .locals 0
    .parameter "mCancelManualTune"

    .prologue
    .line 1469
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelManualTune:Z

    .line 1470
    return-void
.end method

.method public static setmStationCount(I)V
    .locals 0
    .parameter "mStationCount"

    .prologue
    .line 1485
    sput p0, Lcom/huawei/android/FMRadio/FMRadioService;->mStationCount:I

    .line 1486
    return-void
.end method

.method private startFM()V
    .locals 3

    .prologue
    .line 1317
    const-string v1, "FMRadioService"

    const-string v2, "send intent to startFM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1320
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1321
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1087
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->gotoIdleState()V

    .line 1088
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmBroadcastOn(Z)V

    .line 1089
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 1091
    invoke-static {p0, v0, v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->changeSleepMode(Landroid/content/Context;ZI)V

    .line 1093
    return-void
.end method

.method private stopFM()V
    .locals 3

    .prologue
    .line 1328
    const-string v1, "FMRadioService"

    const-string v2, "send intent to stopFM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1331
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1332
    return-void
.end method

.method private switchStation(Z)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 644
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 648
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    sget v1, Lcom/huawei/android/FMRadio/FMRadioService;->mCurrentFreq:I

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isStationSaved(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 651
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isSwitching:Z

    if-nez v1, :cond_1

    .line 653
    iput-boolean v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isSwitching:Z

    .line 655
    const-string v1, "FMRadioService"

    const-string v2, "switch station"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget v1, Lcom/huawei/android/FMRadio/FMRadioService;->mCurrentFreq:I

    invoke-static {v1, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->findPreviousOrNextStation(IZ)I

    move-result v0

    .line 659
    .local v0, frequency:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch station to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmPlay(I)Z

    .line 663
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->isSwitching:Z

    .line 667
    .end local v0           #frequency:I
    :cond_1
    return-void
.end method

.method private tune(I)Z
    .locals 3
    .parameter "frequency"

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1203
    .local v0, bCommandSent:Z
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1204
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v1, p1}, Landroid/hardware/fmradio/FmReceiver;->setStation(I)Z

    .line 1205
    const/4 v0, 0x1

    .line 1208
    :cond_0
    if-nez v0, :cond_1

    .line 1209
    const-string v1, "FMRadioService"

    const-string v2, "tuneRadio fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_1
    return v0
.end method

.method private unRegisterMediaButton()V
    .locals 1

    .prologue
    .line 1366
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 1370
    :cond_0
    return-void
.end method

.method private waitCancelAutotune()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 848
    const/4 v0, 0x0

    .line 850
    .local v0, count:I
    :cond_0
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 851
    add-int/lit8 v0, v0, 0x1

    .line 852
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 854
    :cond_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    sput-boolean v3, Lcom/huawei/android/FMRadio/FMRadioService;->mCancelAutoTune:Z

    .line 856
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 857
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 858
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doSaveSearchStations(Landroid/content/Context;Ljava/util/List;)Z

    .line 861
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 3

    .prologue
    .line 1273
    const/4 v0, 0x0

    .line 1275
    .local v0, bCommandSent:Z
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1277
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v1}, Landroid/hardware/fmradio/FmReceiver;->cancelSearch()Z

    move-result v0

    .line 1279
    if-nez v0, :cond_0

    .line 1280
    const-string v1, "FMRadioService"

    const-string v2, "cancelSearch fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    return v0
.end method

.method public fmAutoTune()V
    .locals 3

    .prologue
    .line 1001
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->stopFM()V

    .line 1005
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 1006
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->setmStationCount(I)V

    .line 1008
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1013
    const-string v1, "com.huawei.android.FMRadio.openfm"

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStart()Z

    move-result v0

    .line 1015
    if-nez v0, :cond_2

    .line 1016
    const-string v1, "FMRadioService"

    const-string v2, "fmAutoTune fmStart failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1
    :goto_0
    return-void

    .line 1021
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->scan(I)Z

    move-result v0

    .line 1023
    if-nez v0, :cond_1

    .line 1024
    const-string v1, "FMRadioService"

    const-string v2, "fmAutoTune fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fmCancelAutoTune()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->setmCancelAutoTune(Z)V

    .line 1037
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->cancelSearch()Z

    .line 1038
    return-void
.end method

.method public fmCancelManualTune()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1066
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->setmCancelManualTune(Z)V

    .line 1067
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->cancelSearch()Z

    .line 1069
    return v0
.end method

.method public fmManualTune(Z)V
    .locals 3
    .parameter "mDirection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1042
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 1047
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    .line 1049
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 1050
    if-ne p1, v1, :cond_1

    .line 1051
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v2, v1, v1}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    goto :goto_0

    .line 1054
    :cond_1
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioService;->mReceiver:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v2, v1, v2}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    goto :goto_0

    .line 1058
    :cond_2
    const-string v0, "FMRadioService"

    const-string v1, "fmManualTune fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fmOpenFMSound(B)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 871
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmFMSoundMode(B)V

    .line 873
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->enableSpeaker(Z)V

    .line 874
    const-string v0, "com.huawei.android.FMRadio.opensoundsuccess"

    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 876
    return-void

    .line 873
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fmPlay(I)Z
    .locals 5
    .parameter "sBaseFreq"

    .prologue
    const/4 v2, 0x0

    .line 951
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 993
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 956
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 957
    const-string v3, "FMRadioService"

    const-string v4, "current freq is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 961
    :cond_2
    :try_start_2
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 963
    .local v1, mAM:Landroid/media/AudioManager;
    if-eqz v1, :cond_3

    :try_start_3
    const-string v3, "fm=off"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 968
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 971
    .local v2, staus:Z
    :try_start_4
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 972
    const-string v3, "com.huawei.android.FMRadio.openfm"

    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStart()Z

    move-result v2

    .line 976
    :cond_4
    if-eqz v2, :cond_6

    .line 979
    mul-int/lit8 v3, p1, 0xa

    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->tune(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .line 980
    if-eqz v2, :cond_5

    .line 989
    :goto_2
    if-eqz v1, :cond_0

    :try_start_5
    const-string v3, "fm=on"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "FMRadioService"

    const-string v4, "AudioManager getSystemService is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 964
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #staus:Z
    :catch_1
    move-exception v0

    .line 965
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "FMRadioService"

    const-string v4, "AudioManager getSystemService is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 982
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #staus:Z
    :cond_5
    const-string v3, "com.huawei.android.FMRadio.operationfail"

    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    goto :goto_2

    .line 985
    :cond_6
    const-string v3, "com.huawei.android.FMRadio.operationfail"

    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public fmStart()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 884
    const-string v3, "FMRadioService"

    const-string v4, "send intent to stop music"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.soundrecorder.stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 890
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 891
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 895
    const v3, 0x10002

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/huawei/android/FMRadio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 897
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v3

    if-ne v5, v3, :cond_0

    .line 898
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->enableSpeaker(Z)V

    .line 901
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmOn()Z

    move-result v1

    .line 903
    .local v1, bRet:Z
    if-eqz v1, :cond_2

    .line 904
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerMediaButton()V

    .line 905
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.android.FMRadio.open"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    :cond_1
    :goto_0
    return v1

    .line 909
    :cond_2
    const-string v3, "FMRadioService"

    const-string v4, "fmStart fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fmStop()V
    .locals 3

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->unRegisterMediaButton()V

    .line 925
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 926
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 929
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    const-string v1, "FMRadioService"

    const-string v2, "FM already stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :goto_0
    monitor-exit p0

    return-void

    .line 934
    :cond_0
    :try_start_1
    const-string v1, "com.huawei.android.FMRadio.stopfm"

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 935
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmOff()Z

    .line 937
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->stopForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 922
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isMultiCallIDLE()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1443
    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1445
    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1447
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1448
    const-string v4, "getCallState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1450
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1453
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1455
    if-nez v5, :cond_0

    if-nez v0, :cond_0

    move v0, v1

    .line 1463
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1458
    goto :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    const-string v1, "FMRadioService"

    const-string v3, "two cards are not both in idle state"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 1463
    goto :goto_0
.end method

.method public isMultiSim()Z
    .locals 4

    .prologue
    .line 1422
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1426
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isMultiSimEnabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1427
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1432
    :goto_0
    return v0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    const-string v1, "FMRadioService"

    const-string v2, "not support dual cards"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1432
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mute()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1380
    const/4 v1, 0x0

    .line 1381
    .local v1, bCommandSent:Z
    iget-boolean v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMuted:Z

    if-eqz v3, :cond_0

    move v2, v1

    .line 1391
    .end local v1           #bCommandSent:Z
    .local v2, bCommandSent:I
    :goto_0
    return v2

    .line 1384
    .end local v2           #bCommandSent:I
    .restart local v1       #bCommandSent:Z
    :cond_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1385
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 1387
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1388
    iput-boolean v4, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMuted:Z

    .line 1389
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 1391
    .restart local v2       #bCommandSent:I
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 555
    const-string v0, "FMRadioService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "com.huawei.android.FMRadio.appwidget.update"

    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceInUse:Z

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z

    .line 563
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mBinder:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 478
    const-string v2, "FMRadioService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerPhoneListener()V

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerScreenOnOffListener()V

    .line 494
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerMediaButton()V

    .line 497
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerIntentsListener()V

    .line 502
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 503
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 507
    return-void

    .line 487
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 488
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 511
    const-string v1, "FMRadioService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const-string v1, "FMRadioService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmOff()Z

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 522
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    iput-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 527
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 528
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 530
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->clear()V

    .line 533
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 535
    iput-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->isMultiSim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 543
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iput-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 550
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 569
    const-string v0, "FMRadioService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v0, "com.huawei.android.FMRadio.appwidget.update"

    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceInUse:Z

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z

    .line 576
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 605
    const-string v2, "FMRadioService"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iput p2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceStartId:I

    .line 609
    if-nez p1, :cond_1

    .line 610
    const-string v2, "FMRadioService"

    const-string v3, "onStart intent == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    const-string v2, "com.huawei.android.FMRadio.servicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->switchStation(Z)V

    goto :goto_0

    .line 624
    :cond_2
    const-string v2, "com.huawei.android.FMRadio.servicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/huawei/android/FMRadio/FMRadioService;->switchStation(Z)V

    goto :goto_0

    .line 627
    :cond_3
    const-string v2, "com.huawei.android.FMRadio.servicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 628
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->doStartOrStopFM()V

    goto :goto_0

    .line 630
    :cond_4
    const-string v2, "com.huawei.android.FMRadio.servicecommand.intoapp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 631
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioService;->intoApplication()V

    goto :goto_0

    .line 637
    :cond_5
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 638
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 639
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 718
    const-string v0, "FMRadioService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceInUse:Z

    .line 722
    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z

    .line 727
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    :goto_0
    return v3

    .line 734
    :cond_0
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneState:Z

    if-nez v0, :cond_1

    .line 736
    iget v0, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->stopSelf(I)V

    goto :goto_0

    .line 738
    :cond_1
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t stopSelf. mPhoneState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerIntentsListener()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void
.end method

.method public registerPhoneListener()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method public unMute()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1401
    const/4 v1, 0x0

    .line 1402
    .local v1, bCommandSent:Z
    iget-boolean v3, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMuted:Z

    if-nez v3, :cond_0

    move v2, v1

    .line 1412
    .end local v1           #bCommandSent:Z
    .local v2, bCommandSent:I
    :goto_0
    return v2

    .line 1405
    .end local v2           #bCommandSent:I
    .restart local v1       #bCommandSent:Z
    :cond_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1406
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 1408
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1409
    iput-boolean v4, p0, Lcom/huawei/android/FMRadio/FMRadioService;->mMuted:Z

    .line 1410
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 1412
    .restart local v2       #bCommandSent:I
    goto :goto_0
.end method
