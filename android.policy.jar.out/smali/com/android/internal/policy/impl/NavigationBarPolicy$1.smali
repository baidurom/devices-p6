.class Lcom/android/internal/policy/impl/NavigationBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NavigationBarPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NavigationBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NavigationBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy$1;->this$0:Lcom/android/internal/policy/impl/NavigationBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.huawei.navigationbar.statuschange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy$1;->this$0:Lcom/android/internal/policy/impl/NavigationBarPolicy;

    const-string v2, "forceMinNavigationBar"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/NavigationBarPolicy;->mForceMinNavigationBar:Z

    .line 66
    iget-object v1, p0, Lcom/android/internal/policy/impl/NavigationBarPolicy$1;->this$0:Lcom/android/internal/policy/impl/NavigationBarPolicy;

    const-string v2, "minNavigationBar"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #calls: Lcom/android/internal/policy/impl/NavigationBarPolicy;->updateNavigationBar(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/NavigationBarPolicy;->access$000(Lcom/android/internal/policy/impl/NavigationBarPolicy;Z)V

    .line 68
    :cond_0
    return-void
.end method
