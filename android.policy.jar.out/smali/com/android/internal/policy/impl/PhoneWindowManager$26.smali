.class Lcom/android/internal/policy/impl/PhoneWindowManager$26;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5348
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5350
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1302(Z)Z

    .line 5351
    const-string v0, "WindowManager"

    const-string v1, "300ms run out.no HOME double click event."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    return-void
.end method
