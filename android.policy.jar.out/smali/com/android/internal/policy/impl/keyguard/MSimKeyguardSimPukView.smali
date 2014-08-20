.class public Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;,
        Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "MSimKeyguardSimPukView"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "resId"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040557

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setUnlockProgressDialogMessage()V
    .locals 5

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 141
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 142
    .local v0, activePhoneType:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    .line 143
    .local v1, isCdma:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getMessageByPhoneType(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    .end local v0           #activePhoneType:I
    .end local v1           #isCdma:Z
    :cond_0
    return-void

    .line 142
    .restart local v0       #activePhoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateSim()V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 154
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->start()V

    .line 182
    :cond_0
    return-void
.end method
