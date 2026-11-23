.class public Lcom/byazt/an/ViewPager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4f6,
        0x4f8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/an/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/an/ViewPager;


# direct methods
.method public constructor <init>(Lcom/byazt/an/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/an/ViewPager$3;->c:Lcom/byazt/an/ViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager$3;->c:Lcom/byazt/an/ViewPager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/an/ViewPager;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/an/ViewPager$3;->c:Lcom/byazt/an/ViewPager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
