.class public Lcom/byazt/kcl/tt$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x2df
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kcl/tt;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/kcl/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kcl/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kcl/tt$8;->tt:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kcl/tt$8;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/kcl/tt$8;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt$8;->tt:Lcom/byazt/kcl/tt;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/kcl/tt;->a(Lcom/byazt/kcl/tt;)Lcom/byazt/rpt/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byazt/kcl/tt$8;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/rpt/c;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
