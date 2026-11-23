.class public Lcom/byazt/mv/tt$2;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x293,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/mv/tt;->c(Lcom/byazt/vb/uj;Lcom/byazt/vb/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vb/uj;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/mv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/mv/tt;Ljava/lang/String;Lcom/byazt/vb/uj;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mv/tt$2;->ve:Lcom/byazt/mv/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/mv/tt$2;->c:Lcom/byazt/vb/uj;

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/mv/tt$2;->tt:J

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/ke/tt;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/mv/tt$2;->ve:Lcom/byazt/mv/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/mv/tt$2;->c:Lcom/byazt/vb/uj;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/mv/tt$2;->tt:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/mv/tt;->c(Lcom/byazt/mv/tt;Lcom/byazt/vb/uj;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
