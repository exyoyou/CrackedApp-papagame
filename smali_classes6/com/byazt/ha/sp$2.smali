.class public Lcom/byazt/ha/sp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e0,
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/lq/ve;

.field public final synthetic uj:Lcom/byazt/ha/sp;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ha/sp;ZLcom/byazt/lq/ve;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ha/sp$2;->uj:Lcom/byazt/ha/sp;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/ha/sp$2;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ha/sp$2;->tt:Lcom/byazt/lq/ve;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ha/sp$2;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/tt;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/ha/sp$2;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p1, Lcom/byazt/ha/tt;->ve:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ha/sp$2;->tt:Lcom/byazt/lq/ve;

    .line 12
    .line 13
    iput-object v0, p1, Lcom/byazt/ha/tt;->uj:Lcom/byazt/lq/ve;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ha/sp$2;->ve:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Lcom/byazt/ha/tt;->n:Ljava/util/List;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ha/sp$2;->ve:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
