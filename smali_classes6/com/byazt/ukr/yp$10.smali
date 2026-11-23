.class public Lcom/byazt/ukr/yp$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x471
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(ILcom/byazt/ete/ic;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ukr/yp;

.field public final synthetic ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$10;->uj:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/ukr/yp$10;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ukr/yp$10;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/byazt/ukr/yp$10;->ve:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/ukr/yp$10;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/ukr/yp$10;->tt:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/byazt/ukr/yp$10;->ve:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "reg_creative"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "no_reg_creative"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object v0
.end method
