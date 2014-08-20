.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    .line 174
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSupressTickmsg:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 181
    :cond_0
    return-void
.end method
