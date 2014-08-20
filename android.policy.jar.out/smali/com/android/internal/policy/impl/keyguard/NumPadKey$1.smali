.class Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/NumPadKey;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "thisView"

    .prologue
    .line 44
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextViewResId:I

    if-lez v2, :cond_2

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, tempV:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextViewResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    :cond_0
    if-nez v0, :cond_1

    .line 54
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextViewResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    :cond_1
    move-object v1, v0

    .line 58
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    check-cast v1, Landroid/widget/TextView;

    .end local v1           #v:Landroid/view/View;
    iput-object v1, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 64
    .end local v0           #tempV:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->doHapticKeyClick()V

    .line 68
    return-void
.end method
