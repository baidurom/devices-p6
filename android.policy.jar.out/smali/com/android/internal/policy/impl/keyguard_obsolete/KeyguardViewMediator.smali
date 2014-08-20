.class public Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$4;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = false

.field private static final DEBUG:Z = false

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final TIMEOUT:I = 0x1

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

.field private mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

.field private mUserPresentIntent:Landroid/content/Intent;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 11
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 191
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 198
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 202
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    .line 205
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHidden:Z

    .line 232
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 243
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 256
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    .line 809
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 981
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$3;

    invoke-direct {v0, p0, v9}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 359
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 360
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 361
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v3, "keyguard"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "show keyguard"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 375
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 377
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 378
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardViewProperties;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

    .line 381
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 382
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 390
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v0, "show_status_bar_lock"

    invoke-static {v6, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_4

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowLockIcon:Z

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mScreenOn:Z

    .line 394
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v9, v9, v10}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 395
    const-string v0, "lock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, soundPath:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v9}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundId:I

    .line 399
    :cond_0
    if-eqz v8, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundId:I

    if-nez v0, :cond_1

    .line 402
    :cond_1
    const-string v0, "unlock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 403
    if-eqz v8, :cond_2

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v9}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUnlockSoundId:I

    .line 406
    :cond_2
    if-eqz v8, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v0, :cond_3

    .line 409
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 411
    .local v7, lockSoundDefaultAttenuation:I
    const-wide/high16 v0, 0x4024

    int-to-float v3, v7

    const/high16 v4, 0x41a0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundVolume:F

    .line 412
    return-void

    .end local v7           #lockSoundDefaultAttenuation:I
    .end local v8           #soundPath:Ljava/lang/String;
    :cond_4
    move v0, v10

    .line 390
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method private adjustStatusBarLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1182
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1183
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1

    .line 1187
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Could not get status bar manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v2, :cond_2

    .line 1191
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1192
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v2, :cond_2

    .line 1193
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x1040508

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    const v4, 0x1080554

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1198
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1210
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 1211
    .local v1, flags:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_3

    .line 1213
    const/high16 v2, 0x100

    or-int/2addr v1, v2

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1218
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1220
    const/high16 v2, 0x8

    or-int/2addr v1, v2

    .line 1229
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1201
    .end local v1           #flags:I
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v2, :cond_2

    .line 1202
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1203
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1

    .line 1216
    .restart local v1       #flags:I
    :cond_5
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    goto :goto_2
.end method

.method private adjustUserActivityLocked()V
    .locals 2

    .prologue
    .line 1172
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1175
    .local v0, enabled:Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->pokeWakelock()V

    .line 1179
    :cond_1
    return-void

    .line 1172
    .end local v0           #enabled:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doKeyguardLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 675
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 697
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .line 699
    .local v2, requireSim:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    .line 700
    .local v1, provisioned:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 701
    .local v3, state:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v6, :cond_7

    :cond_2
    if-eqz v2, :cond_7

    :cond_3
    move v0, v4

    .line 706
    .local v0, lockedOrMissing:Z
    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    .line 712
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_0

    .line 718
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->showLocked()V

    goto :goto_0

    .end local v0           #lockedOrMissing:Z
    .end local v1           #provisioned:Z
    .end local v2           #requireSim:Z
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    move v2, v5

    .line 697
    goto :goto_1

    .restart local v1       #provisioned:Z
    .restart local v2       #requireSim:Z
    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    move v0, v5

    .line 701
    goto :goto_2
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 1148
    monitor-enter p0

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    monitor-exit p0

    .line 1167
    :goto_0
    return-void

    .line 1157
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->playSounds(Z)V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->hide()V

    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    .line 1163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1165
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1166
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .locals 4
    .parameter "wakeup"

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->handleHide()V

    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1040
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1042
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1043
    .local v0, currentUser:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1044
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1051
    monitor-enter p0

    .line 1053
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1056
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1063
    :cond_0
    monitor-exit p0

    .line 1064
    return-void

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    .line 1291
    monitor-enter p0

    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1294
    monitor-exit p0

    .line 1295
    return-void

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
    .locals 1
    .parameter "showListener"

    .prologue
    .line 1302
    monitor-enter p0

    .line 1304
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V

    .line 1305
    monitor-exit p0

    .line 1306
    return-void

    .line 1305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset()V
    .locals 1

    .prologue
    .line 1267
    monitor-enter p0

    .line 1269
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->reset()V

    .line 1270
    monitor-exit p0

    .line 1271
    return-void

    .line 1270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 639
    monitor-enter p0

    .line 640
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 641
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHidden:Z

    .line 642
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 644
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 646
    :cond_0
    monitor-exit p0

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 1122
    monitor-enter p0

    .line 1124
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1141
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->show()V

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    .line 1128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1130
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1137
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->playSounds(Z)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1140
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1133
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTimeout(I)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 1073
    monitor-enter p0

    .line 1075
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1078
    :cond_0
    monitor-exit p0

    .line 1079
    return-void

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    .line 1278
    monitor-enter p0

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->verifyUnlock()V

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    .line 1282
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1283
    monitor-exit p0

    .line 1284
    return-void

    .line 1283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1239
    monitor-enter p0

    .line 1244
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->pokeWakelock()V

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mWakeLock not held in mKeyguardViewManager.wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_1
    monitor-exit p0

    .line 1260
    return-void

    .line 1259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 801
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 802
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    return-void
.end method

.method private isWakeKeyWhenKeyguardShowing(IZ)Z
    .locals 0
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 862
    sparse-switch p1, :sswitch_data_0

    .line 884
    const/4 p2, 0x1

    .end local p2
    :goto_0
    :sswitch_0
    return p2

    .line 882
    .restart local p2
    :sswitch_1
    const/4 p2, 0x0

    goto :goto_0

    .line 862
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 749
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 759
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1084
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    .line 1085
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1090
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1091
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundId:I

    .line 1094
    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mMasterStreamType:I

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 1091
    .end local v1           #whichSound:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 729
    return-void
.end method

.method private showLocked()V
    .locals 3

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 791
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 793
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_1
    return-void

    .line 1111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 738
    return-void
.end method

.method private wakeWhenReadyLocked(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 779
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    return-void
.end method


# virtual methods
.method public doKeyguardTimeout()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 654
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 656
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewProperties;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 937
    return-void
.end method

.method public keyguardDone(ZZ)V
    .locals 5
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 940
    monitor-enter p0

    .line 941
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 943
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 945
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 947
    if-eqz p1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 953
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 955
    if-eqz p1, :cond_1

    .line 958
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 959
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 962
    :cond_1
    monitor-exit p0

    .line 963
    return-void

    :cond_2
    move v1, v2

    .line 944
    goto :goto_0

    .line 962
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 972
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 21
    .parameter "why"

    .prologue
    .line 433
    monitor-enter p0

    .line 434
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mScreenOn:Z

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v18

    if-nez v18, :cond_2

    :cond_0
    const/4 v10, 0x1

    .line 443
    .local v10, lockImmediately:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 446
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->hideLocked()V

    .line 510
    :cond_1
    :goto_1
    monitor-exit p0

    .line 511
    return-void

    .line 440
    .end local v10           #lockImmediately:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 450
    .restart local v10       #lockImmediately:Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 510
    .end local v10           #lockImmediately:Z
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 453
    .restart local v10       #lockImmediately:Z
    :cond_4
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    if-nez v10, :cond_9

    .line 460
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 463
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v18, "screen_off_timeout"

    const/16 v19, 0x7530

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v5, v0

    .line 467
    .local v5, displayTimeout:J
    const-string v18, "lock_screen_lock_after_timeout"

    const/16 v19, 0x1388

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .line 472
    .local v8, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    .line 476
    .local v11, policyTimeout:J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-lez v18, :cond_6

    .line 478
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 479
    sub-long v18, v11, v5

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 490
    .local v14, timeout:J
    :goto_2
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_8

    .line 492
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_1

    .line 482
    .end local v14           #timeout:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 483
    move-wide v14, v8

    .restart local v14       #timeout:J
    goto :goto_2

    .line 485
    .end local v14           #timeout:J
    :cond_7
    const-wide/16 v14, 0x1388

    .restart local v14       #timeout:J
    goto :goto_2

    .line 496
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    add-long v16, v18, v14

    .line 497
    .local v16, when:J
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x1000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 501
    .local v13, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 505
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #displayTimeout:J
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #lockAfterTimeout:J
    .end local v11           #policyTimeout:J
    .end local v13           #sender:Landroid/app/PendingIntent;
    .end local v14           #timeout:J
    .end local v16           #when:J
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V
    .locals 1
    .parameter "showListener"

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mScreenOn:Z

    .line 519
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 521
    if-eqz p1, :cond_0

    .line 522
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewManager$ShowListener;)V

    .line 524
    :cond_0
    monitor-exit p0

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 418
    monitor-enter p0

    .line 420
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSystemReady:Z

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;)V

    .line 422
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V

    .line 423
    monitor-exit p0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .locals 1
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 848
    const/4 v0, 0x1

    .line 850
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWakeMotionWhenKeyguardShowingTq()Z
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 915
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->pokeWakelock(I)V

    .line 916
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .parameter "holdMs"

    .prologue
    .line 920
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 923
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakelockSequence:I

    .line 925
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 926
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 927
    monitor-exit p0

    .line 928
    return-void

    .line 927
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHidden(Z)V
    .locals 5
    .parameter "isHidden"

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x0

    .line 630
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 632
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 633
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 631
    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 533
    monitor-enter p0

    .line 537
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 539
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_0

    .line 544
    monitor-exit p0

    .line 583
    :goto_0
    return-void

    .line 550
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 551
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->hideLocked()V

    .line 582
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 552
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 558
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 560
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 562
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 564
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->showLocked()V

    .line 569
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 570
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 574
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 589
    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 608
    :goto_0
    monitor-exit p0

    .line 609
    return-void

    .line 595
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    .line 599
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 601
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    .line 603
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 605
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 606
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
