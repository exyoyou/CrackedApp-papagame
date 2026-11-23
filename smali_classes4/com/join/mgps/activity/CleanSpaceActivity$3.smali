.class Lcom/join/mgps/activity/CleanSpaceActivity$3;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CleanSpaceActivity;->getArchieveGameInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/join/mgps/activity/CleanSpaceActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CleanSpaceActivity;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$archieve"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CleanSpaceActivity$3;->c:Lcom/join/mgps/activity/CleanSpaceActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CleanSpaceActivity$3;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
