.class public final synthetic Lcom/sigmob/sdk/splash/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/splash/b$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/splash/i;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/v;->a:Lcom/sigmob/sdk/splash/i;

    return-void
.end method


# virtual methods
.method public final onAdWillShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/v;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->k(Lcom/sigmob/sdk/splash/i;)V

    return-void
.end method
