.class Lcom/aggmoread/sdk/z/a/h/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/h/c;->a(Lcom/aggmoread/sdk/z/a/i/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/i/h;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/h/c;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/h/c;Lcom/aggmoread/sdk/z/a/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/h/c$a;->c:Lcom/aggmoread/sdk/z/a/h/c;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/h/c$a;->b:Lcom/aggmoread/sdk/z/a/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/h/c$a;->c:Lcom/aggmoread/sdk/z/a/h/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/h/c$a;->b:Lcom/aggmoread/sdk/z/a/i/h;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/h/c;Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method
