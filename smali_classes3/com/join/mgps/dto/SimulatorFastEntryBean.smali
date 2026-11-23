.class public Lcom/join/mgps/dto/SimulatorFastEntryBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;,
        Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;,
        Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;,
        Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;,
        Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;,
        Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;
    }
.end annotation


# instance fields
.field private change_game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;",
            ">;"
        }
    .end annotation
.end field

.field private fast_entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;",
            ">;"
        }
    .end annotation
.end field

.field private nostalgia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private search_bar_hint:Ljava/lang/String;

.field private tag_game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private the_new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private will_play:Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getChange_game()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->change_game:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFast_entry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->fast_entry:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNostalgia()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->nostalgia:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSearch_bar_hint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->search_bar_hint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_game()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->tag_game:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThe_new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->the_new:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->will_play:Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 2
    .line 3
    return-object v0
.end method

.method public setChange_game(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "change_game"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->change_game:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setFast_entry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fast_entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->fast_entry:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setNostalgia(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nostalgia"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->nostalgia:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSearch_bar_hint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search_bar_hint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->search_bar_hint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_game(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_game"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->tag_game:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setThe_new(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "the_new"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->the_new:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setWill_play(Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "will_play"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean;->will_play:Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 2
    .line 3
    return-void
.end method
