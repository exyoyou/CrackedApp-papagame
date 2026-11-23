.class public Lcom/byazt/sgn/ve$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x1d9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/ve;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/sgn/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/ve;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/ve$7;->tt:Lcom/byazt/sgn/ve;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/sgn/ve$7;->c:I

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
    iget-object v0, p0, Lcom/byazt/sgn/ve$7;->tt:Lcom/byazt/sgn/ve;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/sgn/ve$7;->c:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/sgn/ve;->c(Lcom/byazt/sgn/ve;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
