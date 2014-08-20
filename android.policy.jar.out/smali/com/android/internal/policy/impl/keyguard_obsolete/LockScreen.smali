.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private mCameraDisabled:Z

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mEnableRingSilenceFallback:Z

.field private final mHasVibrator:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSearchDisabled:Z

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 455
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableRingSilenceFallback:Z

    .line 90
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    .line 602
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 456
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 457
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 458
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 459
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 460
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCreationOrientation:I

    .line 468
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 470
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 471
    const v0, 0x109006b

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 476
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    .line 479
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->setFocusable(Z)V

    .line 480
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->setFocusableInTouchMode(Z)V

    .line 481
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->setDescendantFocusability(I)V

    .line 483
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 484
    .local v7, vibrator:Landroid/os/Vibrator;
    if-nez v7, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mHasVibrator:Z

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 486
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    .line 487
    const v0, 0x10202f6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    .line 492
    return-void

    .line 473
    .end local v7           #vibrator:Landroid/os/Vibrator;
    :cond_0
    const v0, 0x109006c

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 484
    .restart local v7       #vibrator:Landroid/os/Vibrator;
    :cond_1
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSearchDisabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateTargets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCameraDisabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableRingSilenceFallback:Z

    return v0
.end method

.method private createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;
    .locals 10
    .parameter "unlockWidget"

    .prologue
    .line 495
    instance-of v6, p1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 496
    check-cast v3, Lcom/android/internal/widget/SlidingTab;

    .line 497
    .local v3, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 498
    const v6, 0x1040317

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 499
    const v6, 0x10802d6

    const v7, 0x10803ae

    const v8, 0x108038f

    const v9, 0x10803a2

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 504
    new-instance v2, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 505
    .local v2, slidingTabMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 516
    .end local v2           #slidingTabMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$SlidingTabMethods;
    .end local v3           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    return-object v2

    .line 507
    :cond_0
    instance-of v6, p1, Lcom/android/internal/widget/WaveView;

    if-eqz v6, :cond_1

    move-object v4, p1

    .line 508
    check-cast v4, Lcom/android/internal/widget/WaveView;

    .line 509
    .local v4, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 510
    .local v5, waveViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    move-object v2, v5

    .line 511
    goto :goto_0

    .line 512
    .end local v4           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v5           #waveViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$WaveViewMethods;
    :cond_1
    instance-of v6, p1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 513
    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 514
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 515
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    move-object v2, v1

    .line 516
    goto :goto_0

    .line 518
    .end local v0           #glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .end local v1           #glowPadViewMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized unlock widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 433
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x1110025

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 434
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v3

    .line 435
    .local v3, isTestHarness:Z
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/local/enable_menu_key"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    .line 439
    .local v1, fileOverride:Z
    const-string v6, "ro.config.hw_menu_unlockscreen"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 440
    .local v2, hwAllowMenuUnlock:Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    .line 415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mHasVibrator:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 422
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 414
    goto :goto_0

    :cond_1
    move v1, v2

    .line 416
    goto :goto_1

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private updateTargets()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 523
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 525
    .local v1, disabledByAdmin:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v2

    .line 526
    .local v2, disabledBySimState:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    const v8, 0x10802df

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v0

    .line 530
    .local v0, cameraTargetPresent:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;

    const v8, 0x1080294

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v4

    .line 535
    .local v4, searchTargetPresent:Z
    :goto_1
    if-eqz v1, :cond_6

    .line 536
    const-string v5, "LockScreen"

    const-string v8, "Camera disabled by Device Policy"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    const-string v8, "search"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mContext:Landroid/content/Context;

    const/4 v9, -0x2

    invoke-virtual {v5, v8, v9}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_7

    move v3, v7

    .line 543
    .local v3, searchActionAvailable:Z
    :goto_3
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_8

    :cond_1
    move v5, v7

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCameraDisabled:Z

    .line 544
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move v6, v7

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mSearchDisabled:Z

    .line 545
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 546
    return-void

    .end local v0           #cameraTargetPresent:Z
    .end local v3           #searchActionAvailable:Z
    .end local v4           #searchTargetPresent:Z
    :cond_4
    move v0, v6

    .line 526
    goto :goto_0

    .restart local v0       #cameraTargetPresent:Z
    :cond_5
    move v4, v6

    .line 530
    goto :goto_1

    .line 537
    .restart local v4       #searchTargetPresent:Z
    :cond_6
    if-eqz v2, :cond_0

    .line 538
    const-string v5, "LockScreen"

    const-string v8, "Camera disabled by Sim State"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v3, v6

    .line 540
    goto :goto_3

    .restart local v3       #searchActionAvailable:Z
    :cond_8
    move v5, v6

    .line 543
    goto :goto_4
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->cleanUp()V

    .line 622
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 623
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 624
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 625
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 569
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateConfiguration()V

    .line 576
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->updateConfiguration()V

    .line 588
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 554
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 557
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onPause()V

    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 600
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onResume()V

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    return-void
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 562
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 565
    :cond_0
    return-void
.end method
