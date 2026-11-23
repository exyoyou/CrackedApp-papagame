.class public Lcom/byazt/un/NativeVideoTsView$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x5a7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/un/NativeVideoTsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tt"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/NativeVideoTsView;

.field public volatile tt:Z


# direct methods
.method private constructor <init>(Lcom/byazt/un/NativeVideoTsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$tt;->c:Lcom/byazt/un/NativeVideoTsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/un/NativeVideoTsView;Lcom/byazt/un/NativeVideoTsView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/un/NativeVideoTsView$tt;-><init>(Lcom/byazt/un/NativeVideoTsView;)V

    return-void
.end method


# virtual methods
.method public c(Z)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView$tt;->tt:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$tt;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView$tt;->tt:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/un/NativeVideoTsView;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
