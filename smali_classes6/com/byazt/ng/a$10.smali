.class public final Lcom/byazt/ng/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x589
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic n:Lcom/byazt/yl/ve;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ll/tt;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Ljava/lang/String;ILcom/byazt/ll/tt;Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$10;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$10;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ng/a$10;->ve:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ng/a$10;->uj:Lcom/byazt/ll/tt;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/ng/a$10;->n:Lcom/byazt/yl/ve;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ng/a$10;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    const-string v1, "callstack_static"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "callstack_message"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/ng/a$10;->tt:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/byazt/ng/a$10;->ve:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "callstack_report_time"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/ng/a$10;->c:Lcom/byazt/ng/uj;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/ng/a$10;->uj:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    iget-object v4, p0, Lcom/byazt/ng/a$10;->n:Lcom/byazt/yl/ve;

    .line 39
    .line 40
    invoke-static {v1, v2, v3, v4, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/byazt/ng/a$10;->c:Lcom/byazt/ng/uj;

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
