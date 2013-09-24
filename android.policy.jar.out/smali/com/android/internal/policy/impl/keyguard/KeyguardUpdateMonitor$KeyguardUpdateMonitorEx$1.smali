.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "LOADED"

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->mIccLoadedHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->mIccLoadedHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    :cond_0
    return-void
.end method
