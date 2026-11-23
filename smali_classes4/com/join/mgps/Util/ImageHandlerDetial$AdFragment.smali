.class public Lcom/join/mgps/Util/ImageHandlerDetial$AdFragment;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/ImageHandlerDetial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdFragment"
.end annotation


# instance fields
.field protected handlerDetial:Lcom/join/mgps/Util/ImageHandlerDetial;

.field protected topAdViewpager:Lcom/join/mgps/customview/LoopViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getTopAdViewpager()Lcom/join/mgps/customview/LoopViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/ImageHandlerDetial$AdFragment;->topAdViewpager:Lcom/join/mgps/customview/LoopViewPager;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTopAdViewpager(Lcom/join/mgps/customview/LoopViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topAdViewpager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/ImageHandlerDetial$AdFragment;->topAdViewpager:Lcom/join/mgps/customview/LoopViewPager;

    .line 2
    .line 3
    return-void
.end method
