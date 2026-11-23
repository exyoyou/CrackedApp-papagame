.class public Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WufunMainItemData"
.end annotation


# instance fields
.field public object:Ljava/lang/Object;

.field public type:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "object"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;->type:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;->object:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
