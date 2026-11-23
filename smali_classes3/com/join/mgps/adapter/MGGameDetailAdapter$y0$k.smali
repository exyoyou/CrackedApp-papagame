.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/dto/RecommendInfomationBean;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(ZILcom/join/mgps/dto/RecommendInfomationBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hideTopDivider",
            "recommend_information_switch",
            "recommendInfomationBean"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->c:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->a:Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 9
    .line 10
    return-void
.end method
