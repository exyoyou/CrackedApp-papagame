.class public Lcom/byazt/ix/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x68d,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ix/uj;->tt(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ix/uj;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/ix/uj;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ix/uj$2;->uj:Lcom/byazt/ix/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ix/uj$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ix/uj$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/ix/uj$2;->ve:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/uj$2;->uj:Lcom/byazt/ix/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ix/uj$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ix/uj$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    iget v4, p0, Lcom/byazt/ix/uj$2;->ve:I

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/byazt/ix/uj;->c(Lcom/byazt/ix/uj;Landroid/content/Context;Ljava/lang/String;IILcom/byazt/ix/uj$ve;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
