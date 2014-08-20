.class public Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, msg:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-nez v1, :cond_3

    .line 46
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 48
    const v0, 0x104052d

    .line 70
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 74
    :cond_1
    return-void

    .line 50
    :cond_2
    const v0, 0x1040532

    goto :goto_0

    .line 52
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 53
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 55
    const v0, 0x104052e

    goto :goto_0

    .line 57
    :cond_4
    const v0, 0x1040531

    goto :goto_0

    .line 59
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 62
    const v0, 0x1040305

    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->updateSim()V

    goto :goto_0

    .line 66
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 67
    const v0, 0x1040534

    goto :goto_0
.end method

.method reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getPukRetries(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, pukRetries:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const v4, 0x104052c

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 87
    return-void
.end method
