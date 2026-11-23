.class public Lcom/byazt/atv/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x1d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/atv/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/xl/da$c;

.field public final synthetic tt:Lcom/byazt/atv/a;

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/atv/a;ILcom/byazt/xl/da$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/atv/a$c;->tt:Lcom/byazt/atv/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/atv/a$c;->ve:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/atv/a$c;->c:Lcom/byazt/xl/da$c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/atv/a$c;->ve:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/atv/a$c;->tt:Lcom/byazt/atv/a;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/atv/a;->tt(Lcom/byazt/atv/a;)Lcom/byazt/atv/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/atv/n;->c(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/atv/a$c;->tt:Lcom/byazt/atv/a;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/atv/a$c;->c:Lcom/byazt/xl/da$c;

    .line 18
    .line 19
    const/16 v2, 0x89

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/byazt/atv/a;->c(Lcom/byazt/atv/a;Lcom/byazt/xl/da$c;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
