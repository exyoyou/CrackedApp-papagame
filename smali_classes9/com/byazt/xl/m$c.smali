.class public Lcom/byazt/xl/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b3,
        0x258
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/xl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/xl/da$c;

.field public final synthetic tt:Lcom/byazt/xl/m;

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/xl/m;ILcom/byazt/xl/da$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xl/m$c;->tt:Lcom/byazt/xl/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/xl/m$c;->ve:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/xl/m$c;->c:Lcom/byazt/xl/da$c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/xl/m$c;->ve:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/xl/m$c;->tt:Lcom/byazt/xl/m;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/xl/m;->tt(Lcom/byazt/xl/m;)Lcom/byazt/ol/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/ol/c;->c(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/xl/m$c;->tt:Lcom/byazt/xl/m;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/xl/m$c;->c:Lcom/byazt/xl/da$c;

    .line 18
    .line 19
    const/16 v2, 0x6b

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/xl/m;->c(Lcom/byazt/xl/m;Lcom/byazt/xl/da$c;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
