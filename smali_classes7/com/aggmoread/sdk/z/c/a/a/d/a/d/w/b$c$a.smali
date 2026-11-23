.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$c;->a:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Landroid/os/Handler$Callback;)V

    const-string v0, "AMSDK_ksh"

    const-string v1, "hgp 2 "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
