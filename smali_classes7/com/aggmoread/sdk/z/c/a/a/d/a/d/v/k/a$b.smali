.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->onADLoaded(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$b;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;Ljava/util/List;)V

    return-void
.end method
