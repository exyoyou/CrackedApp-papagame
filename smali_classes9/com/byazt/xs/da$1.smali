.class public final Lcom/byazt/xs/da$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/da;->tt(ZLjava/lang/String;Lcom/byazt/xs/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/xs/ve;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/byazt/xs/ve;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/byazt/xs/da$1;->c:Z

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/xs/da$1;->tt:Lcom/byazt/xs/ve;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/xs/da$1;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/xs/da$1;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/xs/da$1;->tt:Lcom/byazt/xs/ve;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/xs/da$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/xs/ve;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/xs/da$1;->tt:Lcom/byazt/xs/ve;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/xs/ve;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
