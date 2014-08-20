.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPukView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# static fields
.field protected static final PUK_INPUT:I = 0x1


# instance fields
.field protected volatile mCheckInProgress:Z

.field protected mPinText:Ljava/lang/String;

.field protected mPukText:Ljava/lang/String;

.field protected mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field protected mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 51
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected checkPin()Z
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 310
    .local v0, length:I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 312
    const/4 v1, 0x1

    .line 314
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkPuk()Z
    .locals 2

    .prologue
    .line 299
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmPin()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getMessageByPhoneType(Z)I
    .locals 1
    .parameter "isCdma"

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    const v0, 0x2020013

    .line 291
    :goto_0
    return v0

    :cond_0
    const v0, 0x104052f

    goto :goto_0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 161
    const v0, 0x10202c2

    return v0
.end method

.method protected getPukRetries(II)Ljava/lang/String;
    .locals 5
    .parameter "puk"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const-string v1, ""

    .line 131
    .local v1, strPukRetryNum:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "gsm.slot1.num.puk1"

    aput-object v2, v0, v3

    const-string v2, "gsm.slot2.num.puk1"

    aput-object v2, v0, v4

    .line 132
    .local v0, puk1:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 148
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

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    :cond_0
    const-string v1, ""

    .line 155
    :goto_1
    return-object v1

    .line 134
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    if-nez p2, :cond_1

    .line 136
    aget-object v2, v0, v3

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_1
    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_2
    const-string v2, "gsm.sim.num.puk"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    goto :goto_0

    .line 153
    :cond_3
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

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    const v2, 0x104052f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->setUnlockProgressDialogMessage()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 168
    const v2, 0x10202ce

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 170
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_0
    const v2, 0x10202c3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, pinDelete:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 209
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 222
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    return-void
.end method

.method protected setUnlockProgressDialogMessage()V
    .locals 5

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 281
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 282
    .local v0, activePhoneType:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    .line 283
    .local v1, isCdma:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getMessageByPhoneType(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 285
    .end local v0           #activePhoneType:I
    .end local v1           #isCdma:Z
    :cond_0
    return-void

    .line 282
    .restart local v0       #activePhoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method protected updateSim()V
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 324
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 326
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->start()V

    .line 350
    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 355
    return-void
.end method
