.class public Lcom/byazt/b/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/ve$c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/uj;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/b/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/b/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/uj$2;->c:Lcom/byazt/b/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj$2;->c:Lcom/byazt/b/uj;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/wh/n;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/byazt/wh/n;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/byazt/b/uj;->c(Lcom/byazt/b/uj;Lcom/byazt/zz/gt;)Lcom/byazt/zz/gt;

    .line 9
    .line 10
    .line 11
    const-string v0, "DefaultDownloadCache"

    .line 12
    .line 13
    const-string v1, "rebind error,use backup sqlDownloadCache"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
