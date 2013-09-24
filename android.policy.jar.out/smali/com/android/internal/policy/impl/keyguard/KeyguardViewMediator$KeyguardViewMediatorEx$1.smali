.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1539
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.RINGTONE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    const-string v1, "KeyguardViewMediatorEx"

    const-string v2, "Receive ringtone changed broadcast."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    const-string v2, "LOCK_AUDIOEFFECT_PATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->access$2702(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;Ljava/lang/String;)Ljava/lang/String;

    .line 1545
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    const-string v2, "UNLOCK_AUDIOEFFECT_PATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->access$2802(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;Ljava/lang/String;)Ljava/lang/String;

    .line 1546
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1547
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->unloadLockSounds()V

    .line 1548
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$KeyguardViewMediatorEx;->loadLockSounds()V

    .line 1551
    :cond_1
    return-void
.end method
