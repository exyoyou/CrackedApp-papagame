.class public Lcom/byazt/gk/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x94,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gk/ve;->tt(Lcom/byazt/nc/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nc/tt;

.field public final synthetic tt:Lcom/byazt/gk/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gk/ve$3;->tt:Lcom/byazt/gk/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gk/ve$3;->c:Lcom/byazt/nc/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gk/ve$3;->tt:Lcom/byazt/gk/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/gk/ve$3;->c:Lcom/byazt/nc/tt;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/gk/ve;->tt(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
