.class Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$502(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$502(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$602(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->keyguardDone(Z)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 289
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->keyguardDone(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1402(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 360
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->pokeWakelock()V

    .line 351
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewCallback;->pokeWakelock(I)V

    .line 355
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 367
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 368
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 372
    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_1

    move v5, v6

    .line 375
    .local v5, usingPattern:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 378
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 381
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v3, v2, v1

    .line 385
    .local v3, remainingBeforeWipe:I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_4

    .line 390
    if-lez v3, :cond_3

    .line 391
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V
    invoke-static {v6, v1, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;II)V

    .line 415
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 416
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_1
    move v5, v7

    .line 372
    goto :goto_0

    .line 381
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_2
    const v3, 0x7fffffff

    goto :goto_1

    .line 394
    .restart local v3       #remainingBeforeWipe:I
    :cond_3
    const-string v6, "LockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v6, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;I)V

    goto :goto_2

    .line 398
    :cond_4
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_6

    move v4, v6

    .line 400
    .local v4, showTimeout:Z
    :goto_3
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 401
    const/16 v8, 0xf

    if-ne v1, v8, :cond_7

    .line 402
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V

    .line 403
    const/4 v4, 0x0

    .line 411
    :cond_5
    :goto_4
    if-eqz v4, :cond_0

    .line 412
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->showTimeoutDialog()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)V

    goto :goto_2

    .end local v4           #showTimeout:Z
    :cond_6
    move v4, v7

    .line 398
    goto :goto_3

    .line 404
    .restart local v4       #showTimeout:Z
    :cond_7
    const/16 v8, 0x14

    if-lt v1, v8, :cond_5

    .line 405
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 406
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;

    move-result-object v8

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v6, v8, v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$Mode;Z)V

    .line 408
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 424
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1202(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;Z)Z

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->show(J)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/BiometricSensorUnlock;->stop()Z

    .line 337
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->pokeWakelock(I)V

    .line 338
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 347
    :goto_0
    return-void

    .line 342
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
