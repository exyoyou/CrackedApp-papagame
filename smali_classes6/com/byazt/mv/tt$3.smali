.class public Lcom/byazt/mv/tt$3;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x293,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/mv/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lph/ve;

.field public final synthetic tt:Lcom/byazt/mv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/mv/tt;Ljava/lang/String;Lcom/byazt/lph/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mv/tt$3;->tt:Lcom/byazt/mv/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/mv/tt$3;->c:Lcom/byazt/lph/ve;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/ke/tt;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/mv/tt$3;->c:Lcom/byazt/lph/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x48

    .line 6
    .line 7
    const-string v2, "start_child1"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
