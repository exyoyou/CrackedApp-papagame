.class public Lcom/byazt/lr/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hu/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lr/tt;->c(Lcom/byazt/nn/n;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/hu/ve$c<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/lr/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/lr/tt;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lr/tt$1;->ve:Lcom/byazt/lr/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/lr/tt$1;->c:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/lr/tt$1;->tt:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/lr/tt$1;->ve:Lcom/byazt/lr/tt;

    iget-wide v0, p0, Lcom/byazt/lr/tt$1;->c:J

    iget-wide v2, p0, Lcom/byazt/lr/tt$1;->tt:J

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/nn/tt;->c(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/lr/tt;->c(J)V

    const-string p1, "lp_app_dialog_try_show"

    .line 4
    iget-wide v0, p0, Lcom/byazt/lr/tt$1;->tt:J

    invoke-static {p1, v0, v1}, Lcom/byazt/lr/sp;->tt(Ljava/lang/String;J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/lr/tt$1;->ve:Lcom/byazt/lr/tt;

    iget-wide v0, p0, Lcom/byazt/lr/tt$1;->tt:J

    invoke-virtual {p1, v0, v1}, Lcom/byazt/lr/tt;->tt(J)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/byazt/lr/tt$1;->c(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
