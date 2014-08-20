.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 165
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->val$success:Z

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 177
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getPukRetries(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, pukRetries:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const v4, 0x1040533

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
