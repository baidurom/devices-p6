.class public Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final PUK_INPUT:I = 0x1

.field private static final PUK_TRIED_TEN_TIMES:Ljava/lang/String; = "PUK_TRIED_TEN_TIMES"

.field private static final TAG:Ljava/lang/String; = "SIM_PUK"


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mDelPinButton:Landroid/view/View;

.field private mDelPukButton:Landroid/view/View;

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputEnabled:Z

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkButton:Landroid/view/View;

.field private mPinText:Landroid/widget/TextView;

.field private mPukText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubscription:I

.field mTouchInput:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v1, 0x0

    const v4, 0x1040302

    const v3, 0x10402dd

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 78
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    .line 85
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mInputEnabled:Z

    .line 96
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    .line 97
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    .line 99
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCreationOrientation:I

    .line 100
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 101
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 104
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v5, :cond_1

    .line 105
    const v0, 0x1090067

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    :goto_0
    const v0, 0x10202ea

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const v0, 0x10202f3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    .line 120
    const v0, 0x10202ec

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 121
    const v0, 0x10202f4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    .line 122
    const v0, 0x10202e6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    .line 123
    const v0, 0x10202a4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    invoke-direct {p0, v5, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getPukRetries(II)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, pukRetries:Ljava/lang/String;
    const-string v0, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mInputEnabled:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "SIM_PUK"

    const-string v1, "disable all buttons when PUK is wrong for 10 times"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->setInputEnabled(Z)V

    .line 141
    :cond_0
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 167
    return-void

    .line 108
    .end local v7           #pukRetries:Ljava/lang/String;
    :cond_1
    const v0, 0x1090068

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mTouchInput:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;

    goto/16 :goto_0

    .line 136
    .restart local v7       #pukRetries:Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mInputEnabled:Z

    if-nez v0, :cond_0

    .line 137
    const-string v0, "SIM_PUK"

    const-string v1, "enable all buttons to input PIN or PUK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->setInputEnabled(Z)V

    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 149
    :cond_4
    const-string v0, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getPukRetries(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->setInputEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPuk()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 380
    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getPukRetries(II)Ljava/lang/String;
    .locals 6
    .parameter "puk"
    .parameter "subscription"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    const-string v1, ""

    .line 177
    .local v1, strPukRetryNum:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "gsm.slot1.num.puk1"

    aput-object v2, v0, v4

    const-string v2, "gsm.slot2.num.puk1"

    aput-object v2, v0, v5

    .line 178
    .local v0, puk1:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 191
    const-string v2, "SIM_PUK"

    const-string v3, "getPukRetries(): input error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    :cond_0
    if-ne v5, p1, :cond_3

    .line 199
    const-string v1, "PUK_TRIED_TEN_TIMES"

    .line 209
    :goto_1
    return-object v1

    .line 180
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    if-nez p2, :cond_1

    .line 182
    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_1
    aget-object v2, v0, v5

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_2
    const-string v2, "gsm.sim.num.puk"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    goto :goto_0

    .line 201
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 206
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040305

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 2
    .parameter "digit"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 457
    return-void
.end method

.method private setInputEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mTouchInput:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mTouchInput:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->setInputEnabled(Z)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mInputEnabled:Z

    .line 223
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 471
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->updateConfiguration()V

    .line 473
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 323
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 324
    .local v1, len:I
    if-lez v1, :cond_1

    .line 325
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 338
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 340
    return-void

    .line 327
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    if-ne p1, v2, :cond_4

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_3

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 330
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 331
    .restart local v0       #digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 332
    .restart local v1       #len:I
    if-lez v1, :cond_1

    .line 333
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 335
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 478
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->updateConfiguration()V

    .line 480
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 344
    if-eqz p2, :cond_0

    .line 345
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 346
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 419
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 420
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToLockScreen()V

    .line 452
    :goto_0
    return v3

    .line 426
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mInputEnabled:Z

    if-nez v5, :cond_1

    move v3, v4

    .line 427
    goto :goto_0

    .line 431
    :cond_1
    sget-object v5, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 432
    .local v2, match:C
    if-eqz v2, :cond_2

    .line 433
    add-int/lit8 v4, v2, -0x30

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 436
    :cond_2
    const/16 v5, 0x43

    if-ne p1, v5, :cond_4

    .line 437
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 438
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 439
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 440
    .local v1, len:I
    if-lez v1, :cond_3

    .line 441
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 443
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/16 v5, 0x1388

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0

    .line 447
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_4
    const/16 v5, 0x42

    if-ne p1, v5, :cond_5

    .line 448
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 452
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onPause()V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v5, 0x1040302

    const v4, 0x10402dd

    .line 239
    const-string v1, "SIM_PUK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getPukRetries(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, pukRetries:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onResume()V

    .line 257
    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSubscription:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_1
    const-string v1, "PUK_TRIED_TEN_TIMES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 461
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 464
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    goto :goto_0
.end method
