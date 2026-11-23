.class public Lcom/byazt/wz/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/a;->rl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wz/a;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/a$1;->c:Lcom/byazt/wz/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/wz/a$1;->c:Lcom/byazt/wz/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/wz/a$1;->c:Lcom/byazt/wz/a;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v2, v1}, Lcom/byazt/wz/uj;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
