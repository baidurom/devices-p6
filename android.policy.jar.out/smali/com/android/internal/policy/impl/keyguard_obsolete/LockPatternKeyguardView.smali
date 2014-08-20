.class public Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$5;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static sIsFirstAppearanceAfterBoot:Z


# instance fields
.field private final BIOMETRIC_AREA_EMERGENCY_DIALER_TIMEOUT:I

.field private mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

.field private final mBiometricUnlockStartupLock:Ljava/lang/Object;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mEnableFallback:Z

.field private mForgotPattern:Z

.field private mHasDialog:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

.field private mPluggedIn:Z

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field private mRequiresSim:Z

.field private mSavedState:Landroid/os/Parcelable;

.field private mScreenOn:Z

.field private mShowLockBeforeUnlock:Z

.field private mSuppressBiometricUnlock:Z

.field private mTransportControlView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

.field private mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

.field private final mWindowController:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;

.field private mWindowFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;)V
    .locals 4
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v3, 0x0

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;)V

    .line 95
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWindowFocused:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlockStartupLock:Ljava/lang/Object;

    .line 105
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->BIOMETRIC_AREA_EMERGENCY_DIALER_TIMEOUT:I

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mHasDialog:Z

    .line 173
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    .line 179
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .line 187
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 199
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    .line 219
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 273
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 698
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 441
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z

    .line 442
    const-string v1, "keyguard.no_require_sim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRequiresSim:Z

    .line 443
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 444
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 445
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;

    .line 446
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    .line 447
    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->sIsFirstAppearanceAfterBoot:Z

    .line 448
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;)V

    .line 455
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    .line 456
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->setDescendantFocusability(I)V

    .line 458
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    .line 459
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 461
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 462
    .local v0, powerManager:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "no powerManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mPluggedIn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->restoreWidgetState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;
    .locals 2

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1051
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1054
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    .line 1059
    :goto_0
    return-object v1

    .line 1056
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v1, :cond_3

    .line 1057
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    goto :goto_0

    .line 1059
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    .locals 6

    .prologue
    .line 1068
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 1070
    .local v2, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 1071
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .line 1100
    .local v0, currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .line 1072
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 1073
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1075
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1076
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 1097
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1081
    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .line 1082
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1085
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1087
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1088
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1090
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1093
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    :cond_4
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    .line 1095
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1076
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private initializeBiometricUnlockView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1002
    const/4 v1, 0x0

    .line 1004
    .local v1, restartBiometricUnlock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->stop()Z

    move-result v1

    .line 1013
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    if-nez v2, :cond_2

    .line 1014
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mHasDialog:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    .line 1021
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    .line 1022
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->useBiometricUnlock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1026
    const v2, 0x10202ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1027
    .local v0, biometricUnlockView:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1028
    new-instance v2, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/FaceUnlock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    .line 1030
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v2, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 1034
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->show(J)V

    .line 1040
    .end local v0           #biometricUnlockView:Landroid/view/View;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    .line 1043
    :cond_4
    return-void

    .line 1014
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1036
    .restart local v0       #biometricUnlockView:Landroid/view/View;
    :cond_6
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "Couldn\'t find biometric unlock view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 975
    const v0, 0x10202e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/TransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-nez v0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 810
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 811
    .local v1, unlockMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 812
    .local v0, secure:Z
    sget-object v4, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$5;->$SwitchMap$com$android$internal$policy$impl$keyguard_obsolete$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 832
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 834
    :goto_0
    :pswitch_1
    return v0

    .line 817
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 818
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v3

    .line 817
    goto :goto_1

    .line 820
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 821
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    .line 820
    goto :goto_2

    .line 823
    :pswitch_4
    const/4 v0, 0x1

    .line 824
    goto :goto_0

    .line 826
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 827
    goto :goto_0

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 524
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$1;)V

    .line 525
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$AccountAnalyzer;->start()V

    .line 526
    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .locals 3

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1220
    .local v0, backupIsTimedOut:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 1224
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->start()Z

    .line 1229
    .end local v0           #backupIsTimedOut:Z
    :cond_0
    :goto_1
    return-void

    .line 1218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1226
    .restart local v0       #backupIsTimedOut:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->hide()V

    goto :goto_1
.end method

.method private recreateLockScreen()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->cleanUp()V

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 658
    return-void
.end method

.method private recreateUnlockScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;)V
    .locals 2
    .parameter "unlockMode"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->cleanUp()V

    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 667
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 670
    return-void
.end method

.method private restoreWidgetState()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 603
    :cond_0
    return-void
.end method

.method private saveWidgetState()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 594
    :cond_0
    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 1132
    const/16 v2, 0x1e

    .line 1133
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 1135
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x1040309

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 1141
    const/16 v1, 0x1e

    .line 1142
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x104030a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mHasDialog:Z

    .line 1105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1110
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1111
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1112
    return-void
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 1115
    const/16 v2, 0x1e

    .line 1116
    .local v2, timeoutInSeconds:I
    const v1, 0x1040306

    .line 1117
    .local v1, messageId:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_0

    .line 1118
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1120
    const v1, 0x1040308

    .line 1125
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return-void

    .line 1122
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    const v1, 0x1040307

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 6
    .parameter "attempts"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v2, 0x104030b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V
    .locals 6
    .parameter "mode"
    .parameter "force"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    .line 845
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    if-eq p1, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v3, :cond_2

    .line 846
    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v3, :cond_2

    .line 847
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->recreateLockScreen()V

    .line 852
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 853
    .local v1, unlockMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_4

    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-eq v1, v3, :cond_4

    .line 854
    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-eq v1, v3, :cond_4

    .line 855
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;)V

    .line 860
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 861
    .local v0, goneScreen:Landroid/view/View;
    :goto_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 865
    .local v2, visibleScreen:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;

    move-object v3, v2

    check-cast v3, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->needsInput()Z

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardWindowController;->setNeedsInput(Z)V

    .line 872
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v3, :cond_6

    .line 873
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v0

    .line 874
    check-cast v3, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 876
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v2

    .line 877
    check-cast v3, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onResume()V

    .line 881
    :cond_6
    if-eqz v0, :cond_7

    .line 882
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 884
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->requestLayout()V

    .line 887
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_a

    .line 888
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 860
    .end local v0           #goneScreen:Landroid/view/View;
    .end local v2           #visibleScreen:Landroid/view/View;
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto :goto_0

    .line 861
    .restart local v0       #goneScreen:Landroid/view/View;
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto :goto_1

    .line 891
    .restart local v2       #visibleScreen:Landroid/view/View;
    :cond_a
    return-void
.end method

.method private useBiometricUnlock()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 991
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 992
    .local v1, unlockMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    move v0, v2

    .line 994
    .local v0, backupIsTimedOut:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    sget-object v4, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne v1, v4, :cond_2

    :cond_0
    :goto_1
    return v2

    .end local v0           #backupIsTimedOut:Z
    :cond_1
    move v0, v3

    .line 992
    goto :goto_0

    .restart local v0       #backupIsTimedOut:Z
    :cond_2
    move v2, v3

    .line 994
    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->cleanUp()V

    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 795
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->cleanUp()V

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 801
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->cleanUp()V

    .line 807
    :cond_2
    return-void
.end method

.method createLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    .line 894
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;)V

    .line 900
    .local v0, lockView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 901
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 10
    .parameter "unlockMode"

    .prologue
    .line 905
    const/4 v1, 0x0

    .line 910
    .local v1, unlockView:Landroid/view/View;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_0

    .line 911
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;I)V

    .line 918
    .local v0, view:Lcom/android/internal/policy/impl/keyguard_obsolete/PatternUnlockScreen;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 919
    move-object v1, v0

    .line 967
    .end local v0           #view:Lcom/android/internal/policy/impl/keyguard_obsolete/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 968
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->initializeBiometricUnlockView(Landroid/view/View;)V

    .line 970
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    move-object v3, v1

    .line 971
    :goto_1
    return-object v3

    .line 920
    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_1

    .line 921
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 927
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_2

    .line 928
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 934
    :cond_2
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_3

    .line 936
    :try_start_0
    new-instance v2, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #unlockView:Landroid/view/View;
    .local v2, unlockView:Landroid/view/View;
    move-object v1, v2

    .line 956
    .end local v2           #unlockView:Landroid/view/View;
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 942
    :catch_0
    move-exception v9

    .line 943
    .local v9, e:Ljava/lang/IllegalStateException;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 957
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_4

    .line 958
    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 965
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 537
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 538
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 753
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->pokeWakelock()V

    .line 756
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 689
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x1110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 690
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 692
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->saveWidgetState()V

    .line 693
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 695
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->stop()Z

    .line 684
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewBase;->onDetachedFromWindow()V

    .line 685
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    .line 552
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mForgotPattern:Z

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onPause()V

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->saveWidgetState()V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->stop()Z

    .line 568
    :cond_2
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, startBiometricUnlock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 576
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    .line 577
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWindowFocused:Z

    .line 578
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->show()V

    .line 582
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->restoreWidgetState()V

    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    .line 587
    :cond_0
    return-void

    .line 578
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, startBiometricUnlock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 616
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWindowFocused:Z

    if-nez v1, :cond_0

    move v0, p1

    .line 617
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mWindowFocused:Z

    .line 618
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    if-nez p1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    .line 621
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    .line 622
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->stop()Z

    .line 623
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->hide()V

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 618
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 626
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mHasDialog:Z

    .line 627
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 628
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->maybeStartBiometricUnlock()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 543
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mForgotPattern:Z

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 546
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onResume()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;->onResume()V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->hide()V

    .line 646
    :cond_2
    return-void
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 775
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->keyguardDone(Z)V

    .line 787
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 784
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 785
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 762
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 765
    sget-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->pokeWakelock()V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method
