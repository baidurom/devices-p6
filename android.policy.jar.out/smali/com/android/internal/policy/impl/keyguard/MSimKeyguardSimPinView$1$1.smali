.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 150
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->val$success:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 166
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getPinRetries(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, pinRetries:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    const v4, 0x1040530

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
