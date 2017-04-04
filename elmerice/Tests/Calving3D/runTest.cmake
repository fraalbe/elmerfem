INCLUDE(${TEST_SOURCE}/../test_macros.cmake)

SET(NPROCS 2)

EXECUTE_PROCESS(COMMAND ${ELMERGRID_BIN} 14 2 PlanMesh.msh -autoclean -metis ${NPROCS} 0)

RUN_ELMERICE_TEST(WITH_MPI)
