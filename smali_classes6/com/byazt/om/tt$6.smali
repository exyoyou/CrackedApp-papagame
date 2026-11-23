.class public Lcom/byazt/om/tt$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x2e7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/tt;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/om/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/om/tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/tt$6;->tt:Lcom/byazt/om/tt;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/om/tt$6;->c:I

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
    iget-object v0, p0, Lcom/byazt/om/tt$6;->tt:Lcom/byazt/om/tt;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/om/tt$6;->c:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/om/tt;->c(Lcom/byazt/om/tt;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
