.class public Lcom/byazt/uph/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1be,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uph/c;->c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/byazt/yj/gt;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uph/c$tt;

.field public final synthetic tt:Lcom/byazt/uph/c;


# direct methods
.method public constructor <init>(Lcom/byazt/uph/c;Lcom/byazt/uph/c$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uph/c$2;->tt:Lcom/byazt/uph/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uph/c$2;->c:Lcom/byazt/uph/c$tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uph/c$2;->tt:Lcom/byazt/uph/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/uph/c$2;->c:Lcom/byazt/uph/c$tt;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/byazt/uph/c;->c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uph/c$tt;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uph/c$2;->tt:Lcom/byazt/uph/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/uph/c$2;->c:Lcom/byazt/uph/c$tt;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/byazt/uph/c;->c(Lcom/byazt/yj/m;Lcom/byazt/uph/c$tt;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
