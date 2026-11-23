.class Lcom/papa/controller/core/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/e;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/e;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e$a;->a:Lcom/papa/controller/core/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/papa/controller/core/e$a;->a:Lcom/papa/controller/core/e;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, v0, p1}, Lcom/papa/controller/core/e;->b(Lcom/papa/controller/core/e;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
