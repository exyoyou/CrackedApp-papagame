.class public Lcom/byazt/r/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3bd,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/r/tt;->c(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/r/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/r/tt;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/r/tt$1;->ve:Lcom/byazt/r/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/r/tt$1;->c:Ljava/util/List;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/r/tt$1;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/r/tt$1;->ve:Lcom/byazt/r/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/r/tt$1;->c:Ljava/util/List;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/r/tt$1;->tt:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
