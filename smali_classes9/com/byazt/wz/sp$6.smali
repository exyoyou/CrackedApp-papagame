.class public Lcom/byazt/wz/sp$6;
.super Lcom/byazt/wrq/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x251
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/sp;->c(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/wz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/sp;Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/sp$6;->ve:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/sp$6;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/wz/sp$6;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/wrq/uj;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/sp$6;->ve:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/wz/uj;->gt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1, v0}, Lcom/byazt/qt/ve;->tt(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/wz/sp$6;->c:Ljava/util/Map;

    .line 12
    .line 13
    const-string v1, "itemClickListener"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/wz/sp$6;->ve:Lcom/byazt/wz/sp;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/wz/sp;->x(Lcom/byazt/wz/sp;)Ljava/util/function/Function;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v2, p0, Lcom/byazt/wz/sp$6;->tt:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-class v2, Ljava/lang/Void;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    iget-object v3, p0, Lcom/byazt/wz/sp$6;->c:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method
