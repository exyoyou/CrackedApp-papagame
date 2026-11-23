.class public Lcom/byazt/zj/ve$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qya/ve$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x182
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zj/ve;->c(Landroid/content/Context;Lcom/byazt/zj/ve$ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/zj/ve$ve;

.field public final synthetic ve:Lcom/byazt/zj/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/zj/ve;Landroid/content/Context;Lcom/byazt/zj/ve$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zj/ve$6;->ve:Lcom/byazt/zj/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zj/ve$6;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zj/ve$6;->tt:Lcom/byazt/zj/ve$ve;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/zj/ve$6;->ve:Lcom/byazt/zj/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zj/ve$6;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/zj/ve$6;->tt:Lcom/byazt/zj/ve$ve;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve;Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
