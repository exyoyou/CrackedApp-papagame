.class public Lcom/byazt/pm/c$1;
.super Lcom/byazt/pm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54b,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pm/c;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pm/c;


# direct methods
.method public constructor <init>(Lcom/byazt/pm/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pm/c$1;->c:Lcom/byazt/pm/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/pm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Lcom/byazt/ji/tt;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ji/uj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/byazt/ji/uj;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
