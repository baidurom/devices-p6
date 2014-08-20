.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 61
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, msg:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 68
    const v0, 0x104052d

    .line 90
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 94
    :cond_1
    return-void

    .line 70
    :cond_2
    const v0, 0x1040532

    goto :goto_0

    .line 72
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 75
    const v0, 0x104052e

    goto :goto_0

    .line 77
    :cond_4
    const v0, 0x1040531

    goto :goto_0

    .line 79
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 82
    const v0, 0x1040305

    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V

    goto :goto_0

    .line 86
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 87
    const v0, 0x1040534

    goto :goto_0
.end method

.method reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getPukRetries(II)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, pukRetries:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x104052c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 107
    return-void
.end method
