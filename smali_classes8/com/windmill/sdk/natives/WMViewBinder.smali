.class public Lcom/windmill/sdk/natives/WMViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/IWMViewBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/natives/WMViewBinder$Builder;
    }
.end annotation


# instance fields
.field public final callToActionId:I

.field public final descriptionTextId:I

.field public final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final groupImage1Id:I

.field public final groupImage2Id:I

.field public final groupImage3Id:I

.field public final iconImageId:I

.field public final layoutId:I

.field public final mainImageId:I

.field public final mediaViewId:I

.field public final shakeViewContainerId:I

.field public final titleId:I


# direct methods
.method protected constructor <init>(Lcom/windmill/sdk/natives/WMViewBinder$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->s:I

    .line 5
    .line 6
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->layoutId:I

    .line 7
    .line 8
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->a:I

    .line 9
    .line 10
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->titleId:I

    .line 11
    .line 12
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->qp:I

    .line 13
    .line 14
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->descriptionTextId:I

    .line 15
    .line 16
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->r:I

    .line 17
    .line 18
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->callToActionId:I

    .line 19
    .line 20
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->q:I

    .line 21
    .line 22
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->iconImageId:I

    .line 23
    .line 24
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->vc:I

    .line 25
    .line 26
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->mainImageId:I

    .line 27
    .line 28
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->k:I

    .line 29
    .line 30
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->mediaViewId:I

    .line 31
    .line 32
    iget-object v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->p:Ljava/util/Map;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->extras:Ljava/util/Map;

    .line 35
    .line 36
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->l:I

    .line 37
    .line 38
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->groupImage1Id:I

    .line 39
    .line 40
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->e:I

    .line 41
    .line 42
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->groupImage2Id:I

    .line 43
    .line 44
    iget v0, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->dz:I

    .line 45
    .line 46
    iput v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->groupImage3Id:I

    .line 47
    .line 48
    iget p1, p1, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->rb:I

    .line 49
    .line 50
    iput p1, p0, Lcom/windmill/sdk/natives/WMViewBinder;->shakeViewContainerId:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public getCallToActionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->callToActionId:I

    .line 2
    .line 3
    return v0
.end method

.method public getDescriptionTextId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->descriptionTextId:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->extras:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupImage1Id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->groupImage1Id:I

    .line 2
    .line 3
    return v0
.end method

.method public getGroupImage2Id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->groupImage2Id:I

    .line 2
    .line 3
    return v0
.end method

.method public getGroupImage3Id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->groupImage3Id:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconImageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->iconImageId:I

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->layoutId:I

    .line 2
    .line 3
    return v0
.end method

.method public getMainImageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->mainImageId:I

    .line 2
    .line 3
    return v0
.end method

.method public getMediaViewId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->mediaViewId:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeViewContainerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->shakeViewContainerId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/natives/WMViewBinder;->titleId:I

    .line 2
    .line 3
    return v0
.end method
